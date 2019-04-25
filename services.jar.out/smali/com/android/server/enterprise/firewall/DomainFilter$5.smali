.class Lcom/android/server/enterprise/firewall/DomainFilter$5;
.super Landroid/content/BroadcastReceiver;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2300(Lcom/android/server/enterprise/firewall/DomainFilter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2400(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2500(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2600(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mPortalFilterReceiver.onReceive() - invalid host"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
