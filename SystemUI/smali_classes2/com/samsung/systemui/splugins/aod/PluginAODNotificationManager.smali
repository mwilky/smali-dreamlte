.class public interface abstract Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;
.super Ljava/lang/Object;
.source "PluginAODNotificationManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract removeNotification(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;)V
.end method

.method public abstract updateActiveNotifications(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract updateVisibleNotifications(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation
.end method
