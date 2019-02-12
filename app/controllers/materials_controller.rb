class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]
  # pagination count
  PER = 18

  # GET /materials
  # GET /materials.json
  def index

    # TODO move to application_controller isLogin?
    @currentUser = current_user.id if current_user.present?

    # @q is set on ApplicationController
    @materials = @q.result.order_latest.page(params[:page]).per(PER)

    # category
    if params[:category_id].present?
      @materials = Material.where("category_ids @> ARRAY[#{params[:category_id]}]").order_latest.page(params[:page]).per(PER)
    end

    if params[:hashtag].present?
      @materials = Hashtag.where(hashname: params[:hashtag])[0].materials.order_latest.page(params[:page]).per(PER)
    end

  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end

  # GET /materials/new
  def new
    if current_user.blank?
      redirect_to new_user_session_path, notice: 'Please login before posting.'
    end
    @material = Material.new

  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create

    params[:material][:user_id] = current_user.id
    @material = Material.new(material_params).save

    redirect_to materials_path

  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to @material, notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to materials_url, notice: 'Material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def hashtag
    @tag = Hashtag.find_by(hashname: params[:name])
    # @materials = @tag.microposts.build
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit({category_ids: []}, :description, :user_id, :main_image, {sub_images: []},:remove_sub_images, :title, :stock, :price, :unit, :image_1, :image_2, :image_3, :image_4, :image_5)
    end

end
