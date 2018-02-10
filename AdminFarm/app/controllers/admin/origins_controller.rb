module Admin
  class OriginsController < Admin::ApplicationController
    include ApplicationHelper
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Origin.
    #     page(params[:page]).
    #     per(10)
    # end
    
    def show
      @table1 = Animal.where(:gender_id => params[:id]).select(show_table1('show', Origin, Animal)).limit(10)
      super
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Origin.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
