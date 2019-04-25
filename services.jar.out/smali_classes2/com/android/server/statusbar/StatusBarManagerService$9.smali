.class Lcom/android/server/statusbar/StatusBarManagerService$9;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatusToType(Landroid/os/IBinder;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$backDisposition:I

.field final synthetic val$barType:I

.field final synthetic val$showImeSwitcher:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$barType:I

    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$token:Landroid/os/IBinder;

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$vis:I

    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$backDisposition:I

    iput-boolean p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$showImeSwitcher:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$500(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$barType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$500(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$barType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$vis:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$backDisposition:I

    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$9;->val$showImeSwitcher:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
