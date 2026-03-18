# 2026-03-16T10:37:21.736389200
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab2_digit_classifier_accel")

vitis.dispose()

