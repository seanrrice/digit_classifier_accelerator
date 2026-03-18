# 2026-03-17T17:25:08.381457300
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab2_digit_classifier_accel")

comp = client.create_hls_component(name = "knn_accelerator",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="knn_accelerator")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

