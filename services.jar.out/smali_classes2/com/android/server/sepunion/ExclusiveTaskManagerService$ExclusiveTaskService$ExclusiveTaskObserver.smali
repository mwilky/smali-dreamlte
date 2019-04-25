.class final Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;
.super Landroid/database/ContentObserver;
.source "ExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExclusiveTaskObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->registerObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->unregisterObserver()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->registerObserver_Internal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->addObserver(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->updateSettingDB_Internal(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->clearIgnoreList()V

    return-void
.end method

.method private addObserver(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$300(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private clearIgnoreList()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1700(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getValue(II)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;I)Z

    move-result v1

    const/16 v2, 0x3a

    const/16 v3, 0x39

    if-nez v1, :cond_3

    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-object v3, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-object v3, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-object v3, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "enabled_accessibility_services"

    const/4 v5, -0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    if-ne p2, v3, :cond_4

    const-string v2, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-ne p2, v2, :cond_5

    const-string v2, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const-string v2, "com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.samsung.accessibility.universalswitch.UniversalSwitchService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    :goto_2
    return v0
.end method

.method private registerObserver()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v4, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget v5, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    if-eq v5, v3, :cond_1

    iget v3, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    iget-object v5, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->registerObserver_Internal(ILjava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "enabled_accessibility_services"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "accreset_state"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerObserver_Internal(ILjava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldIgnoreDBUpdate(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1700(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1700(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method private unregisterObserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSettingDB_Internal(III)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    const-string v1, "ExclusiveTaskService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ExclusiveTask]updateSettingDB_Internal : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1800(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;I)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3a

    const/16 v4, 0x39

    if-nez v1, :cond_7

    if-eq p1, v4, :cond_7

    if-ne p1, v3, :cond_0

    goto :goto_3

    :cond_0
    iget v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_2
    iget v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move v3, p3

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_4
    iget v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    iget-object v2, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$700(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x24

    if-ne p1, v2, :cond_5

    const/4 v1, 0x2

    :cond_5
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    if-nez p2, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, p3

    :goto_2
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_7
    :goto_3
    const/16 v1, 0x20

    const/16 v5, 0x10

    const/16 v6, 0x2710

    const/16 v7, 0x40

    const/16 v8, 0x800

    const/16 v9, 0x1000

    if-ne p2, v2, :cond_a

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_8

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_4

    :sswitch_1
    invoke-virtual {v2, v8}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_4

    :sswitch_2
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_4

    :sswitch_3
    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1900(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)I

    move-result v3

    if-ne v3, v6, :cond_9

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    nop

    :goto_4
    return-void

    :cond_a
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    sparse-switch p1, :sswitch_data_1

    goto :goto_5

    :sswitch_4
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_5

    :sswitch_5
    invoke-virtual {v2, v8}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_5

    :sswitch_6
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_5

    :sswitch_7
    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1900(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)I

    move-result v3

    if-ne v3, v6, :cond_b

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    nop

    :goto_5
    nop

    :cond_c
    :goto_6
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$2000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$2000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;->doPostProcess(Landroid/content/Context;I)I

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x39 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x39 -> :sswitch_5
        0x3a -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ExclusiveTaskService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ExclusiveTask]onChange selfChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "enabled_accessibility_services"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1200(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v4, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1202(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v3, "accreset_state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "accreset_state"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "ExclusiveTaskService"

    const-string v4, "[ExclusiveTask]Reset Done"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)V

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1302(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Z)Z

    return-void

    :pswitch_1
    const-string v3, "ExclusiveTaskService"

    const-string v5, "[ExclusiveTask]Reset Starting"

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1302(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Z)Z

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "secure"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    const-string v6, "global"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    :goto_1
    iget-object v7, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->getId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->shouldIgnoreDBUpdate(I)Z

    move-result v7

    if-eqz v7, :cond_5

    return-void

    :cond_5
    const/4 v7, -0x1

    if-eq v0, v7, :cond_b

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->getValue(II)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    iget-object v9, v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$700(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x24

    if-ne v0, v9, :cond_6

    const/4 v8, 0x2

    :cond_6
    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PreProcess;

    iget-object v10, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v10}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v10

    if-ne v7, v8, :cond_7

    move v11, v5

    goto :goto_2

    :cond_7
    move v11, v4

    :goto_2
    invoke-interface {v9, v10, v11}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PreProcess;->doPreProcess(Landroid/content/Context;I)I

    :cond_8
    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-ne v7, v8, :cond_9

    move v4, v5

    nop

    :cond_9
    invoke-static {v9, v0, v4, v7}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1600(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;III)V

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-boolean v5, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mNeedToNotify:Z

    if-eqz v5, :cond_a

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.samsung.accessibility.UPDATE_MY_A11Y_NOTI"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.accessibility"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_a
    goto :goto_3

    :cond_b
    const-string v4, "ExclusiveTaskService"

    const-string v5, "[ExclusiveTask] Do nothing because the module is not managed by Exclusive Task."

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
