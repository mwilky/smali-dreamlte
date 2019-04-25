.class Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;
.super Landroid/os/Handler;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkManagementHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2200(Lcom/android/server/enterprise/firewall/DomainFilter;I)V

    nop

    :goto_0
    return-void
.end method
