.class Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
.super Landroid/database/ContentObserver;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyMuteSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v1}, Lcom/android/server/notification/EasyMuteController;->access$300(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_motion"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v5}, Lcom/android/server/notification/EasyMuteController;->access$300(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "motion_overturn"

    invoke-static {v5, v6, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    move v0, v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2, v1, v0}, Lcom/android/server/notification/EasyMuteController;->access$400(Lcom/android/server/notification/EasyMuteController;ZZ)V

    return-void
.end method
