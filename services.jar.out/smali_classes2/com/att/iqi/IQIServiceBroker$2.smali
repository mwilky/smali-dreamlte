.class Lcom/att/iqi/IQIServiceBroker$2;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1, v0}, Lcom/att/iqi/IQIServiceBroker;->access$300(Lcom/att/iqi/IQIServiceBroker;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/att/iqi/IIQIService;->reportKeyCode([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/att/iqi/IQIServiceBroker$2;->setResultData(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/att/iqi/IQIServiceBroker$2;->abortBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "IQIServiceBroker"

    const-string/jumbo v4, "reportKeyCode failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
