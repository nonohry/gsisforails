class MkGroupsController < ApplicationController
<<<<<<< HEAD
 
  def index
    @mk_groups = MkGroup.all
  end
  
  def new
    @mk_group = MkGroup.new
  end

=======
  # GET /mk_groups
  # GET /mk_groups.json
  def index
    @mk_groups = MkGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mk_groups }
    end
  end

  # GET /mk_groups/new
  # GET /mk_groups/new.json
  def new
    @mk_group = MkGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mk_group }
    end
  end

  # GET /mk_groups/1/edit
>>>>>>> e8978ad573a590ca52c1061e57943ca878b586f8
  def edit
    @mk_group = MkGroup.find(params[:id])
  end

<<<<<<< HEAD
  def create
    @mk_group = MkGroup.new(params[:mk_group])

    if @mk_group.save
      redirect_to mk_groups_path, notice: 'Data KMK berhasil disimpan.'
    else
      render action: "new"
    end
  end
  
  def update
    @mk_group = MkGroup.find(params[:id])

    if @mk_group.update_attributes(params[:mk_group])
      redirect_to mk_groups_path, notice: 'Data KMK berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

=======
  # POST /mk_groups
  # POST /mk_groups.json
  def create
    @mk_group = MkGroup.new(params[:mk_group])

    respond_to do |format|
      if @mk_group.save
        format.html { redirect_to mk_groups_path, notice: 'Mk group was successfully created.' }
        format.json { render json: @mk_group, status: :created, location: mk_groups_path }
      else
        format.html { render action: "new" }
        format.json { render json: @mk_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mk_groups/1
  # PUT /mk_groups/1.json
  def update
    @mk_group = MkGroup.find(params[:id])

    respond_to do |format|
      if @mk_group.update_attributes(params[:mk_group])
        format.html { redirect_to mk_groups_path, notice: 'Mk group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mk_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_groups/1
  # DELETE /mk_groups/1.json
>>>>>>> e8978ad573a590ca52c1061e57943ca878b586f8
  def destroy
    @mk_group = MkGroup.find(params[:id])
    @mk_group.destroy

<<<<<<< HEAD
    redirect_to mk_groups_url
=======
    respond_to do |format|
      format.html { redirect_to mk_groups_url }
      format.json { head :ok }
    end
>>>>>>> e8978ad573a590ca52c1061e57943ca878b586f8
  end
end
