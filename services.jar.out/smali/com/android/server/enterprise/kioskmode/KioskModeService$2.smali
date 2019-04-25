.class Lcom/android/server/enterprise/kioskmode/KioskModeService$2;
.super Ljava/lang/Object;
.source "KioskModeService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "KioskModeService"

    const-string/jumbo v1, "listner - Dex Enabling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    :cond_0
    return-void
.end method
