.class Lcom/android/server/desktopmode/PendingUiCommands;
.super Ljava/lang/Object;
.source "PendingUiCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUiCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/PendingUiCommands;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    return-void
.end method

.method private static hasSameNotificationId(II)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->getNotificationId(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->getNotificationId(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method static synthetic lambda$flushCommands$0(Ljava/util/List;)V
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/PendingUiCommands;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flushing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method add(IILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;Z)V

    return-void
.end method

.method add(IILjava/lang/Runnable;Z)V
    .locals 4

    if-eqz p3, :cond_3

    new-instance v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;-><init>(IILjava/lang/Runnable;Z)V

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    iget v3, v2, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    invoke-static {p1, v3}, Lcom/android/server/desktopmode/PendingUiCommands;->hasSameNotificationId(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method add(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;)V

    return-void
.end method

.method add(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;)V

    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method flushCommands(Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$PendingUiCommands$ZyZko9PgEm1TUFLPplCk0D8ooPs;

    invoke-direct {v1, v0}, Lcom/android/server/desktopmode/-$$Lambda$PendingUiCommands$ZyZko9PgEm1TUFLPplCk0D8ooPs;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/server/desktopmode/PendingUiCommands;->clear()V

    return-void
.end method

.method isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method remove(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/PendingUiCommands;->remove(II)V

    return-void
.end method

.method remove(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x65

    if-ne p2, v0, :cond_1

    const/4 p2, -0x1

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    if-nez p1, :cond_2

    iget v2, v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    invoke-static {v2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isDialogType(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->equals(IIZ)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_4
    goto :goto_0

    :cond_5
    return-void
.end method
