.class Lcom/att/iqi/IQIServiceBroker$6$1;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/IQIServiceBroker$6;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/att/iqi/IQIServiceBroker$6;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker$6;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/IQIServiceBroker$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/IQIServiceBroker$6;

    iget-object v0, v0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IQIServiceBroker"

    const-string v2, "binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/IQIServiceBroker$6;

    iget-object v1, v1, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$1602(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
