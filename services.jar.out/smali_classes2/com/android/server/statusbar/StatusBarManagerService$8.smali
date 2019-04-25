.class Lcom/android/server/statusbar/StatusBarManagerService$8;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$barType:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->val$barType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$500(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->val$barType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->val$barType:I

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$1200(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$1100(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method
