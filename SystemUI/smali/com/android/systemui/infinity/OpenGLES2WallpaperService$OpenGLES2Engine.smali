.class Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;
.super Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;
.source "OpenGLES2WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/OpenGLES2WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenGLES2Engine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/OpenGLES2WallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;-><init>(Lcom/android/systemui/infinity/GLWallpaperService;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    nop

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/4 v3, 0x1

    const/high16 v4, 0x20000

    if-lt v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->setPreserveEGLContextOnPause(Z)V

    iget-object v3, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    invoke-virtual {v3}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->getNewRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void

    :cond_1
    return-void
.end method
