.class Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;
.super Ljava/lang/Object;
.source "KnoxAnalyticsSystemService.java"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxAnalyticsActivation(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$100(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$200(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$300(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$400(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    :cond_0
    return-void
.end method

.method public onKnoxAnalyticsDeactivation(Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$300(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$500(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    return-void
.end method

.method public onStatusChanged(IZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$700(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    return-void
.end method

.method public onTriggerChanged(IZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$600(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    return-void
.end method
