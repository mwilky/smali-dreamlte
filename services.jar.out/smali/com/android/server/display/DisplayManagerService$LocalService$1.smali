.class Lcom/android/server/display/DisplayManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

.field final synthetic val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDisplayState(IIII)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v2, p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(IZ)V

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$6600(Lcom/android/server/display/DisplayManagerService;IIII)V

    :cond_0
    if-eq p1, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$6600(Lcom/android/server/display/DisplayManagerService;IIII)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6700(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v3

    if-eq v3, p3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v3, p3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6702(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    const/4 v2, 0x1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    if-ne p2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v3, v1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(IZ)V

    :cond_3
    :goto_0
    return-void
.end method
