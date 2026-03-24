# 2026-03-23T17:51:05.125103
import vitis

client = vitis.create_client()
client.set_workspace(path="digit_classifier_accelerator")

comp = client.get_component(name="knn_accelerator")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

client.delete_component(name="knn_accelerator")

client.delete_component(name="knn_accelerator")

comp = client.get_component(name="knn_accelerator")
comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

