.class Lcom/android/server/desktopmode/DesktopModeService$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method
