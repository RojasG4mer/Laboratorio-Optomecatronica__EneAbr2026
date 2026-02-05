<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="SubVIs" Type="Folder">
			<Item Name="factorial.vi" Type="VI" URL="../factorial.vi"/>
			<Item Name="Permutaciones.vi" Type="VI" URL="../Permutaciones.vi"/>
		</Item>
		<Item Name="Clusters.vi" Type="VI" URL="../Clusters.vi"/>
		<Item Name="Control_de_motores.vi" Type="VI" URL="../Control_de_motores.vi"/>
		<Item Name="Usando VIs.vi" Type="VI" URL="../Usando VIs.vi"/>
		<Item Name="Variable global funcional.vi" Type="VI" URL="../Variable global funcional.vi"/>
		<Item Name="VariablesLocales_conGlobalesFuncionales.vi" Type="VI" URL="../VariablesLocales_conGlobalesFuncionales.vi"/>
		<Item Name="VIs polimorficos.vi" Type="VI" URL="../VIs polimorficos.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
