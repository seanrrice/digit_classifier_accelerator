# 2026-03-17T19:26:53.058125500
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab2_digit_classifier_accel")

comp = client.get_component(name="knn_accelerator")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

