Dim notes, combo, bonus, rising, timesBonus, amountBonus, risingPercent, gaugeNormal, amountGauge, gaugeNumber, vgAmount

notes = Inputbox("�m�[�c������͂��Ă�������")
combo = Inputbox("�{�[�i�X������R���{������͂��Ă�������(J-Critical�Ń{�[�i�X������ꍇ��1�Ɠ��͂��Ă�������")
bonus = Inputbox("�{�[�i�X�̗ʂ���͂��Ă�������")
rising = Inputbox("�Q�[�W�㏸����%�P�ʂœ��͂��Ă�������(�㏸���Ȃ��ꍇ�A0�Ɠ��͂��Ă�������)")
timesBonus = Int(notes / combo)
amountBonus = bonus * timesBonus
risingPercent = rising / 100
gaugeNormal = 60000 * risingPercent
amountGauge = gaugeNormal + amountBonus

gaugeNumber = 0
vgAmount = 0

Do Until vgAmount >= amountGauge
	gaugeNumber = gaugeNumber + 1
	vgAmount = vgAmount + 10000 + (2000 * gaugeNumber)
Loop

If vgAmount = amountGauge Then

MsgBox("�m�[�c��:" & notes & vbCr & "�{�[�i�X:" & combo & "�R���{���Ƃ�+" & bonus & vbCr & "�Q�[�W�㏸��:" & rising & "%" & vbCr & vbCr & "�����ʗ��_�l:" & amountGauge & vbCr & "���_�㓞�B�Q�[�W�{��:" & gaugeNumber)

Else

MsgBox("�m�[�c��:" & notes & vbCr & "�{�[�i�X:" & combo & "�R���{���Ƃ�+" & bonus & vbCr & "�Q�[�W�㏸��:" & rising & "%" & vbCr & vbCr & "�����ʗ��_�l:" & amountGauge & vbCr & "���_�㓞�B�Q�[�W�{��:" & gaugeNumber - 1)

End If