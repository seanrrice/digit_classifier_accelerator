# 2026-03-22T10:17:55.625272200
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab2_digit_classifier_accel")

vitis.dispose()

