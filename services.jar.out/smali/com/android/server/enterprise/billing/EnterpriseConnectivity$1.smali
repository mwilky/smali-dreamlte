.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field roaming:Z

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->roaming:Z

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->roaming:Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
