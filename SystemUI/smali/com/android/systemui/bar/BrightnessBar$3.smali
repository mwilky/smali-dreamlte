.class Lcom/android/systemui/bar/BrightnessBar$3;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/BrightnessBar;->initBrightnessDetailResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/BrightnessBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAutoBrightness(Z)V
    .locals 7

    const-string v0, "BrightnessBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoBrightness() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/bar/BrightnessBar;->access$100(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/bar/BrightnessBar;->access$200(Lcom/android/systemui/bar/BrightnessBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/bar/BrightnessBar;->access$100(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/bar/BrightnessBar;->access$300(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/settings/BrightnessController;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/bar/BrightnessBar;->access$100(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/BrightnessController;->setOutdoorMode(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBrightnessOnTop(Z)V
    .locals 3

    const-string v0, "BrightnessBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightnessOnTop() : oldValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v2}, Lcom/android/systemui/bar/BrightnessBar;->access$400(Lcom/android/systemui/bar/BrightnessBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/bar/BrightnessBar;->access$400(Lcom/android/systemui/bar/BrightnessBar;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "brightness_on_top"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
