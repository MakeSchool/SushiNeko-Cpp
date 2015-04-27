<GameProjectFile>
  <PropertyGroup Type="Scene" Name="MainScene" ID="a2ee0952-26b5-49ae-8bf9-4f1d6279b798" Version="2.2.1.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="11" Speed="1.0000" ActivedAnimationName="ready">
        <Timeline ActionTag="735938060" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="True" />
          <BoolFrame FrameIndex="11" Tween="False" Value="False" />
        </Timeline>
        <Timeline ActionTag="-1223049060" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
          <BoolFrame FrameIndex="11" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="1169502385" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
          <BoolFrame FrameIndex="11" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="-1096669189" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="default" StartIndex="0" EndIndex="0">
          <RenderColor A="150" R="0" G="255" B="127" />
        </AnimationInfo>
        <AnimationInfo Name="title" StartIndex="1" EndIndex="10">
          <RenderColor A="150" R="100" G="149" B="237" />
        </AnimationInfo>
        <AnimationInfo Name="ready" StartIndex="11" EndIndex="20">
          <RenderColor A="150" R="255" G="0" B="255" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Scene" FrameEvent="" RightMargin="-640.0000" TopMargin="-960.0000" ctype="SingleNodeObjectData">
        <Position X="0.0000" Y="0.0000" />
        <Scale ScaleX="1.0000" ScaleY="1.0000" />
        <AnchorPoint />
        <CColor A="255" R="255" G="255" B="255" />
        <Size X="640.0000" Y="960.0000" />
        <PrePosition X="0.0000" Y="0.0000" />
        <PreSize X="0.0000" Y="0.0000" />
        <Children>
          <NodeObjectData Name="background" ActionTag="263372952" FrameEvent="" Tag="30" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-64.0000" RightMargin="-64.0000" TopMargin="-176.0000" ctype="SpriteObjectData">
            <Position X="320.0000" Y="0.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="768.0000" Y="1136.0000" />
            <PrePosition X="0.5000" Y="0.0000" />
            <PreSize X="1.2000" Y="1.1833" />
            <FileData Type="Normal" Path="Assets/resources-phonehd/background.png" />
          </NodeObjectData>
          <NodeObjectData Name="piece" ActionTag="1035923380" FrameEvent="" Tag="31" IconVisible="True" PositionPercentXEnabled="True" LeftMargin="320.0000" RightMargin="320.0000" TopMargin="790.0000" BottomMargin="170.0000" InnerActionSpeed="1.0000" ctype="ProjectNodeObjectData">
            <Position X="320.0000" Y="170.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="0.0000" Y="0.0000" />
            <PrePosition X="0.5000" Y="0.1771" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="Piece.csd" />
          </NodeObjectData>
          <NodeObjectData Name="pieceNode" ActionTag="-775825522" FrameEvent="" Tag="95" IconVisible="True" PositionPercentXEnabled="True" LeftMargin="320.0000" RightMargin="320.0000" TopMargin="674.0000" BottomMargin="286.0000" ctype="SingleNodeObjectData">
            <Position X="320.0000" Y="286.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="0.0000" Y="0.0000" />
            <PrePosition X="0.5000" Y="0.2979" />
            <PreSize X="0.0000" Y="0.0000" />
          </NodeObjectData>
          <NodeObjectData Name="character" ActionTag="951755214" FrameEvent="" Tag="35" IconVisible="True" PositionPercentXEnabled="True" LeftMargin="320.0000" RightMargin="320.0000" TopMargin="730.0000" BottomMargin="230.0000" InnerActionSpeed="1.0000" ctype="ProjectNodeObjectData">
            <Position X="320.0000" Y="230.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="0.0000" Y="0.0000" />
            <PrePosition X="0.5000" Y="0.2396" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="Character.csd" />
          </NodeObjectData>
          <NodeObjectData Name="play" ActionTag="735938060" FrameEvent="" Tag="45" PositionPercentXEnabled="True" LeftMargin="218.5000" RightMargin="218.5000" TopMargin="813.0000" BottomMargin="21.0000" FontSize="14" ButtonText="" Scale9Width="203" Scale9Height="126" ctype="ButtonObjectData">
            <Position X="320.0000" Y="84.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="203.0000" Y="126.0000" />
            <PrePosition X="0.5000" Y="0.0875" />
            <PreSize X="0.3172" Y="0.1312" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="Normal" Path="Assets/resources-phonehd/button.png" />
            <PressedFileData Type="Normal" Path="Assets/resources-phonehd/button.png" />
            <NormalFileData Type="Normal" Path="Assets/resources-phonehd/button.png" />
          </NodeObjectData>
          <NodeObjectData Name="lifeBG" ActionTag="-225586348" FrameEvent="" Tag="46" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="166.5000" RightMargin="166.5000" TopMargin="19.2000" BottomMargin="858.8000" ctype="SpriteObjectData">
            <Position X="320.0000" Y="940.8000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="307.0000" Y="82.0000" />
            <PrePosition X="0.5000" Y="0.9800" />
            <PreSize X="0.4797" Y="0.0854" />
            <Children>
              <NodeObjectData Name="lifeBar" ActionTag="523644030" FrameEvent="" Tag="47" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="17.4990" RightMargin="17.5010" TopMargin="16.5000" BottomMargin="16.5000" ctype="SpriteObjectData">
                <Position X="17.4990" Y="41.0000" />
                <Scale ScaleX="0.5000" ScaleY="1.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <CColor A="255" R="255" G="255" B="255" />
                <Size X="272.0000" Y="49.0000" />
                <PrePosition X="0.0570" Y="0.5000" />
                <PreSize X="0.8860" Y="0.5976" />
                <FileData Type="Normal" Path="Assets/resources-phonehd/life.png" />
              </NodeObjectData>
            </Children>
            <FileData Type="Normal" Path="Assets/resources-phonehd/life_bg.png" />
          </NodeObjectData>
          <NodeObjectData Name="tapRight" ActionTag="-1223049060" VisibleForFrame="False" FrameEvent="" Tag="48" PositionPercentXEnabled="True" LeftMargin="451.0000" TopMargin="837.5000" BottomMargin="45.5000" ctype="SpriteObjectData">
            <Position X="640.0000" Y="84.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="1.0000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="189.0000" Y="77.0000" />
            <PrePosition X="1.0000" Y="0.0875" />
            <PreSize X="0.2953" Y="0.0802" />
            <FileData Type="Normal" Path="Assets/resources-phonehd/tap_right.png" />
          </NodeObjectData>
          <NodeObjectData Name="tapLeft" ActionTag="1169502385" VisibleForFrame="False" FrameEvent="" Tag="52" RightMargin="451.0000" TopMargin="837.5000" BottomMargin="45.5000" ctype="SpriteObjectData">
            <Position X="0.0000" Y="84.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="189.0000" Y="77.0000" />
            <PrePosition X="0.0000" Y="0.0875" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="Assets/resources-phonehd/tap_left.png" />
          </NodeObjectData>
          <NodeObjectData Name="scoreLabel" ActionTag="-1096669189" VisibleForFrame="False" FrameEvent="" Tag="101" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="274.5000" RightMargin="274.5000" TopMargin="324.5000" BottomMargin="612.5000" FontSize="100" LabelText="0&#xA;" ctype="TextObjectData">
            <Position X="320.0000" Y="624.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="54.0000" Y="115.0000" />
            <PrePosition X="0.5000" Y="0.6500" />
            <PreSize X="0.1422" Y="0.0240" />
            <FontResource Type="Normal" Path="Game of Three.ttf" />
          </NodeObjectData>
        </Children>
      </ObjectData>
    </Content>
    <CameraPosition ValueX="0.0000" ValueY="5.0000" ValueZ="-1.0000" />
    <CameraRotation ValueX="0.0000" ValueY="0.0000" ValueZ="0.0000" />
  </Content>
</GameProjectFile>