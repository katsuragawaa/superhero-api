module Api
	module V1
		class HerosController < ApplicationController
			def index
				heros = Hero.order('name')
				render json: {
					status: "Success",
					message: "Loaded heros",
					data: heros
				},
				status: :ok
			end

			def show
				hero = Hero.find(params[:id])
				render json: {
					status: "Success",
					message: "Loaded hero",
					data: hero
				},
				status: :ok
			end

			def create
				hero = Hero.new(hero_params)

				if hero.save
					render json: {
						status: "Success",
						message: "Created hero",
						data: hero
						},
					status: :created
				else
					render json: {
						status: "Error",
						message: "Unable to create hero",
						data: hero.errors
						},
					status: :unprocessable_entry
				end
			end

			def destroy
				hero = Hero.find(params[:id])
				hero.destroy
				render json: {
					status: "Success",
					message: "Destroyed hero",
					data: hero
				},
				status: :ok
			end

			def update
				hero = Hero.find(params[:id])

				if hero.update(hero_params)
					render json: {
						status: "Success",
						message: "Updated hero",
						data: hero
						},
					status: :ok
				else
					render json: {
						status: "Error",
						message: "Unable to update hero",
						data: hero.errors
						},
					status: :unprocessable_entry
				end
			end

			private

			def hero_params
				params.permit(:name, :power, :race)
			end

		end
	end
end
