.class Lcom/att/iqi/IQIServiceBrokerExt$2;
.super Landroid/database/ContentObserver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 5

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBrokerExt;->access$100(Lcom/att/iqi/IQIServiceBrokerExt;)I

    move-result v0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$200(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "IQIServiceBrokerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange: opt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v3}, Lcom/att/iqi/IQIServiceBrokerExt;->access$300(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "running"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "stopped"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$300(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$400(Z)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$600(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBrokerExt;->access$500(Lcom/att/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBrokerExt;->access$300(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBrokerExt;->access$600(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v3}, Lcom/att/iqi/IQIServiceBrokerExt;->access$500(Lcom/att/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$400(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v2, v1}, Lcom/att/iqi/IQIServiceBrokerExt;->access$000(Lcom/att/iqi/IQIServiceBrokerExt;Z)V

    :cond_4
    :goto_1
    return-void
.end method
