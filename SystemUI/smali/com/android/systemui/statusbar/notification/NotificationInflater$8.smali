.class Lcom/android/systemui/statusbar/notification/NotificationInflater$8;
.super Ljava/lang/Object;
.source "NotificationInflater.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$newContentView:Landroid/widget/RemoteViews;

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$redactAmbient:Z

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method constructor <init>(ZLcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;ZLandroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$isNewView:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iput p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$inflationId:I

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iput p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$reInflateFlags:I

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iput-boolean p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$redactAmbient:Z

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$existingView:Landroid/view/View;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$newContentView:Landroid/widget/RemoteViews;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$existingView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$isNewView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$existingView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :goto_0
    const-string v1, "NotificationInflater"

    const-string v2, "Async Inflation failed but normal inflation finished normally."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->onViewApplied(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$inflationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    invoke-static {v1, p1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->access$1900(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    :goto_1
    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$isNewView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->init(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$reInflateFlags:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$redactAmbient:Z

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->access$1800(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    return-void
.end method
