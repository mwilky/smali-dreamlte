.class Lcom/att/iqi/GenUI46$HandlerCallback;
.super Ljava/lang/Object;
.source "GenUI46.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/GenUI46;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCallback"
.end annotation


# static fields
.field static final MSG_PROCESS_APP_EXIT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/att/iqi/GenUI46;


# direct methods
.method private constructor <init>(Lcom/att/iqi/GenUI46;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/GenUI46$HandlerCallback;->this$0:Lcom/att/iqi/GenUI46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/GenUI46;Lcom/att/iqi/GenUI46$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/GenUI46$HandlerCallback;-><init>(Lcom/att/iqi/GenUI46;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Handling app exit"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/att/iqi/GenUI46$MessageBundle;

    iget-object v2, p0, Lcom/att/iqi/GenUI46$HandlerCallback;->this$0:Lcom/att/iqi/GenUI46;

    iget-object v3, v0, Lcom/att/iqi/GenUI46$MessageBundle;->applicationInformation:Lcom/att/iqi/ApplicationInformation;

    invoke-static {v2, v3}, Lcom/att/iqi/GenUI46;->access$100(Lcom/att/iqi/GenUI46;Lcom/att/iqi/ApplicationInformation;)V

    iget-object v2, v0, Lcom/att/iqi/GenUI46$MessageBundle;->applicationInformation:Lcom/att/iqi/ApplicationInformation;

    iget-object v3, p0, Lcom/att/iqi/GenUI46$HandlerCallback;->this$0:Lcom/att/iqi/GenUI46;

    invoke-static {v3}, Lcom/att/iqi/GenUI46;->access$200(Lcom/att/iqi/GenUI46;)Lcom/att/iqi/lib/IQIManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/att/iqi/ApplicationInformation;->submitExitMetrics(Lcom/att/iqi/lib/IQIManager;)V

    iget-object v2, p0, Lcom/att/iqi/GenUI46$HandlerCallback;->this$0:Lcom/att/iqi/GenUI46;

    iget-object v3, v0, Lcom/att/iqi/GenUI46$MessageBundle;->applicationInformation:Lcom/att/iqi/ApplicationInformation;

    invoke-static {v2, v3}, Lcom/att/iqi/GenUI46;->access$300(Lcom/att/iqi/GenUI46;Lcom/att/iqi/ApplicationInformation;)V

    iget-object v2, p0, Lcom/att/iqi/GenUI46$HandlerCallback;->this$0:Lcom/att/iqi/GenUI46;

    invoke-static {v2}, Lcom/att/iqi/GenUI46;->access$400(Lcom/att/iqi/GenUI46;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/att/iqi/GenUI46$HandlerCallback;->this$0:Lcom/att/iqi/GenUI46;

    invoke-static {v3}, Lcom/att/iqi/GenUI46;->access$400(Lcom/att/iqi/GenUI46;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/att/iqi/GenUI46$MessageBundle;->applicationInformation:Lcom/att/iqi/ApplicationInformation;

    invoke-virtual {v4}, Lcom/att/iqi/ApplicationInformation;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    nop

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
