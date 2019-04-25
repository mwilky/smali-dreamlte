.class Lcom/android/server/nextapp/PkgPredictorService$3;
.super Landroid/app/IProcessObserver$Stub;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/nextapp/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/PkgPredictorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService$3;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService$3;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v0}, Lcom/android/server/nextapp/PkgPredictorService;->access$300(Lcom/android/server/nextapp/PkgPredictorService;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$3;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$500(Lcom/android/server/nextapp/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$3;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$500(Lcom/android/server/nextapp/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
