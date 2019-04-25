.class Lcom/android/server/aod/AODManagerService$5;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1200(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1200(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$1300(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$1300(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->clearAODShowState()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, v1}, Lcom/android/server/aod/AODManagerService;->access$1400(Lcom/android/server/aod/AODManagerService;I)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
