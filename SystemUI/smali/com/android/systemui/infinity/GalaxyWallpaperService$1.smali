.class Lcom/android/systemui/infinity/GalaxyWallpaperService$1;
.super Landroid/content/BroadcastReceiver;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1900(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onAODBgOff()V

    const-string v0, "GalaxyWallpaper"

    const-string/jumbo v1, "received - ACTION_AOD_BG_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const-string/jumbo v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    invoke-static {v0, v2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1902(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z

    :cond_2
    return-void
.end method
