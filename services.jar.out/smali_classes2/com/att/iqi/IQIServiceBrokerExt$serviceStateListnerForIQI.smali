.class Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "serviceStateListnerForIQI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBrokerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBrokerExt;->access$400(Z)V

    :cond_0
    return-void
.end method
