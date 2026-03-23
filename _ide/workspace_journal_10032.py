# 2026-03-22T10:36:33.649470400
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab2_digit_classifier_accel")

vitis.dispose()

