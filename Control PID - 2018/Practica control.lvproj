<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">18.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="subVIs" Type="Folder">
			<Item Name="Angulo de encoder.vi" Type="VI" URL="../subVI/Angulo de encoder.vi"/>
			<Item Name="Imagen a angulo.vi" Type="VI" URL="../subVI/Imagen a angulo.vi"/>
			<Item Name="Movimiento de motores.vi" Type="VI" URL="../subVI/Movimiento de motores.vi"/>
			<Item Name="PPs to RPM.vi" Type="VI" URL="../subVI/PPs to RPM.vi"/>
			<Item Name="V to Deg.vi" Type="VI" URL="../subVI/V to Deg.vi"/>
			<Item Name="Get DAQ tasks.vi" Type="VI" URL="../subVI/Get DAQ tasks.vi"/>
			<Item Name="Stop all tasks.vi" Type="VI" URL="../subVI/Stop all tasks.vi"/>
			<Item Name="Set motor Duty cycle.vi" Type="VI" URL="../subVI/Set motor Duty cycle.vi"/>
			<Item Name="Enable-disable control.vi" Type="VI" URL="../subVI/Enable-disable control.vi"/>
		</Item>
		<Item Name="Tasks/channels" Type="Folder">
			<Item Name="CCW" Type="NI-DAQmx Channel">
				<Property Name="ChanType" Type="Str">Counter Output</Property>
				<Property Name="CO.OutputType" Type="Str">Pulse:Time</Property>
				<Property Name="CO.Pulse.HighTime" Type="Str">0.01</Property>
				<Property Name="CO.Pulse.IdleState" Type="Str">Low</Property>
				<Property Name="CO.Pulse.LowTime" Type="Str">0.01</Property>
				<Property Name="CO.Pulse.Time.InitialDelay" Type="Str">0</Property>
				<Property Name="CO.Pulse.Time.Units" Type="Str">Seconds</Property>
				<Property Name="Descr" Type="Str"></Property>
				<Property Name="Name" Type="Str">CCW</Property>
				<Property Name="PhysicalChanName" Type="Str">Dev3/ctr1</Property>
			</Item>
			<Item Name="CW" Type="NI-DAQmx Channel">
				<Property Name="ChanType" Type="Str">Counter Output</Property>
				<Property Name="CO.OutputType" Type="Str">Pulse:Time</Property>
				<Property Name="CO.Pulse.HighTime" Type="Str">0.01</Property>
				<Property Name="CO.Pulse.IdleState" Type="Str">Low</Property>
				<Property Name="CO.Pulse.LowTime" Type="Str">0.01</Property>
				<Property Name="CO.Pulse.Time.InitialDelay" Type="Str">0</Property>
				<Property Name="CO.Pulse.Time.Units" Type="Str">Seconds</Property>
				<Property Name="Descr" Type="Str"></Property>
				<Property Name="Name" Type="Str">CW</Property>
				<Property Name="PhysicalChanName" Type="Str">Dev3/ctr0</Property>
			</Item>
			<Item Name="Potenciometer" Type="NI-DAQmx Channel">
				<Property Name="AI.Max" Type="Str">5</Property>
				<Property Name="AI.MeasType" Type="Str">Voltage</Property>
				<Property Name="AI.Min" Type="Str">0</Property>
				<Property Name="AI.TermCfg" Type="Str">RSE</Property>
				<Property Name="AI.Voltage.Units" Type="Str">Volts</Property>
				<Property Name="ChanType" Type="Str">Analog Input</Property>
				<Property Name="Descr" Type="Str"></Property>
				<Property Name="Name" Type="Str">Potenciometer</Property>
				<Property Name="PhysicalChanName" Type="Str">Dev3/ai0</Property>
			</Item>
			<Item Name="Posicion angular" Type="NI-DAQmx Task">
				<Property Name="\0\ChanType" Type="Str">Counter Input</Property>
				<Property Name="\0\CI.AngEncoder.InitialAngle" Type="Str">0</Property>
				<Property Name="\0\CI.AngEncoder.PulsesPerRev" Type="Str">32</Property>
				<Property Name="\0\CI.AngEncoder.Units" Type="Str">Degrees</Property>
				<Property Name="\0\CI.Encoder.AInputTerm" Type="Str">/Dev5/PFI0</Property>
				<Property Name="\0\CI.Encoder.BInputTerm" Type="Str">/Dev5/PFI1</Property>
				<Property Name="\0\CI.Encoder.DecodingType" Type="Str">X4</Property>
				<Property Name="\0\CI.Encoder.ZIndexEnable" Type="Str">0</Property>
				<Property Name="\0\CI.Encoder.ZIndexPhase" Type="Str">A High B High</Property>
				<Property Name="\0\CI.Encoder.ZIndexVal" Type="Str">0</Property>
				<Property Name="\0\CI.Encoder.ZInputTerm" Type="Str">/Dev1/PFI2</Property>
				<Property Name="\0\CI.MeasType" Type="Str">Position:Angular Encoder</Property>
				<Property Name="\0\Name" Type="Str">Posicion angular/AngularPosition</Property>
				<Property Name="\0\PhysicalChanName" Type="Str">Dev5/ctr0</Property>
				<Property Name="Channels" Type="Str">Posicion angular/AngularPosition</Property>
				<Property Name="Name" Type="Str">Posicion angular</Property>
				<Property Name="SampClk.ActiveEdge" Type="Str">Rising</Property>
				<Property Name="SampClk.Rate" Type="Str">100000</Property>
				<Property Name="SampClk.Src" Type="Str">100kHzTimebase</Property>
				<Property Name="SampQuant.SampMode" Type="Str">Continuous Samples</Property>
				<Property Name="SampQuant.SampPerChan" Type="Str">50</Property>
				<Property Name="SampTimingType" Type="Str">Sample Clock</Property>
			</Item>
			<Item Name="ProjectAngularPositionTask" Type="NI-DAQmx Task">
				<Property Name="\0\ChanType" Type="Str">Counter Input</Property>
				<Property Name="\0\CI.AngEncoder.InitialAngle" Type="Str">0</Property>
				<Property Name="\0\CI.AngEncoder.PulsesPerRev" Type="Str">24</Property>
				<Property Name="\0\CI.AngEncoder.Units" Type="Str">Degrees</Property>
				<Property Name="\0\CI.Encoder.DecodingType" Type="Str">X4</Property>
				<Property Name="\0\CI.Encoder.ZIndexEnable" Type="Str">0</Property>
				<Property Name="\0\CI.Encoder.ZIndexPhase" Type="Str">A High B High</Property>
				<Property Name="\0\CI.Encoder.ZIndexVal" Type="Str">0</Property>
				<Property Name="\0\CI.MeasType" Type="Str">Position:Angular Encoder</Property>
				<Property Name="\0\Name" Type="Str">ProjectAngularPositionTask/AngularPosition</Property>
				<Property Name="\0\PhysicalChanName" Type="Str">Dev3/ctr0</Property>
				<Property Name="Channels" Type="Str">ProjectAngularPositionTask/AngularPosition</Property>
				<Property Name="Name" Type="Str">ProjectAngularPositionTask</Property>
			</Item>
			<Item Name="ProjectAngularPositionTask_0" Type="NI-DAQmx Task">
				<Property Name="\0\ChanType" Type="Str">Counter Input</Property>
				<Property Name="\0\CI.AngEncoder.InitialAngle" Type="Str">0</Property>
				<Property Name="\0\CI.AngEncoder.PulsesPerRev" Type="Str">24</Property>
				<Property Name="\0\CI.AngEncoder.Units" Type="Str">Degrees</Property>
				<Property Name="\0\CI.Encoder.AInputTerm" Type="Str">/Dev4/PFI0</Property>
				<Property Name="\0\CI.Encoder.BInputTerm" Type="Str">/Dev4/PFI1</Property>
				<Property Name="\0\CI.Encoder.DecodingType" Type="Str">X4</Property>
				<Property Name="\0\CI.Encoder.ZIndexEnable" Type="Str">0</Property>
				<Property Name="\0\CI.Encoder.ZIndexPhase" Type="Str">A High B High</Property>
				<Property Name="\0\CI.Encoder.ZIndexVal" Type="Str">0</Property>
				<Property Name="\0\CI.Encoder.ZInputTerm" Type="Str">/Dev4/PFI2</Property>
				<Property Name="\0\CI.MeasType" Type="Str">Position:Angular Encoder</Property>
				<Property Name="\0\Name" Type="Str">ProjectAngularPositionTask_0/AngularPosition</Property>
				<Property Name="\0\PhysicalChanName" Type="Str">Dev4/ctr0</Property>
				<Property Name="Channels" Type="Str">ProjectAngularPositionTask_0/AngularPosition</Property>
				<Property Name="Name" Type="Str">ProjectAngularPositionTask_0</Property>
			</Item>
		</Item>
		<Item Name="Typedef" Type="Folder">
			<Item Name="Parametros control.ctl" Type="VI" URL="../typedef/Parametros control.ctl"/>
			<Item Name="Selector control.ctl" Type="VI" URL="../typedef/Selector control.ctl"/>
			<Item Name="Task list.ctl" Type="VI" URL="../typedef/Task list.ctl"/>
		</Item>
		<Item Name="Documentacion" Type="Folder" URL="../Documentacion">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Old" Type="Folder">
			<Item Name="Main - Pot.vi" Type="VI" URL="../Main - Pot.vi"/>
			<Item Name="Main  - vision.vi" Type="VI" URL="../Main  - vision.vi"/>
			<Item Name="Main - Encoder.vi" Type="VI" URL="../Main - Encoder.vi"/>
			<Item Name="dummy RPM.vi" Type="VI" URL="../dummy RPM.vi"/>
		</Item>
		<Item Name="Prueba_movimiento_motor.vi" Type="VI" URL="../Prueba_movimiento_motor.vi"/>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
