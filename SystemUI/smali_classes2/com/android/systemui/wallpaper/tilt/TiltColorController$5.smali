.class Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;
.super Landroid/database/ContentObserver;
.source "TiltColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1100(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_tilt_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1100(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_tilt_effect_hue_limit"

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange: setting changed isTiltEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hueLimit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setEnable(Z)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setHueLimit(F)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
