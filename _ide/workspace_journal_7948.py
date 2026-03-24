# 2026-03-22T10:14:47.047281200
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab2_digit_classifier_accel")

vitis.dispose()

