return Def.ActorFrame{
	Name="Header",

	Def.Quad{
		InitCommand=function(self)
			self:zoomto(_screen.w, 32):vertalign(top):x(_screen.cx)
			if ThemePrefs.Get("RainbowMode") then
				self:diffuse(0,0,0,0.9)
			else
				self:diffuse(0.65,0.65,0.65,1)
			end
		end,
	},

	Def.BitmapText{
		Name="HeaderText",
		Font="_wendy small",
		Text=ScreenString("HeaderText"),
		InitCommand=cmd(diffusealpha,0; zoom,WideScale(0.5,0.6); horizalign, left; xy, 10, 15 ),
		OnCommand=cmd(sleep, 0.1; decelerate,0.33; diffusealpha,1),
		OffCommand=cmd(accelerate,0.33; diffusealpha,0)
	}
}
