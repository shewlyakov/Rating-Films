import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import VisibilityController from "./visibility_controller"

eagerLoadControllersFrom("controllers", application)
application.register("visibility", VisibilityController)
