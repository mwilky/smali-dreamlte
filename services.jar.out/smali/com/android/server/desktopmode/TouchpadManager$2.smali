.class Lcom/android/server/desktopmode/TouchpadManager$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/TouchpadManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPen Setting deleted."

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$502(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    :cond_1
    return-void
.end method
