.class Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;
.super Ljava/lang/Object;
.source "PendingUiCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/PendingUiCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiCommand"
.end annotation


# instance fields
.field mCommand:Ljava/lang/Runnable;

.field mRemoveNotification:Z

.field mType:I

.field mWhere:I


# direct methods
.method public constructor <init>(IILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;-><init>(IILjava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    iput p2, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    iput-object p3, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    return-void
.end method


# virtual methods
.method public equals(IIZ)Z
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    if-ne v0, p1, :cond_1

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    if-ne v0, p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    if-ne v0, p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Z
    .locals 3

    iget v0, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    iget v1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    iget-boolean v2, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->equals(IIZ)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->equals(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiCommand("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWhere="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    if-eqz v1, :cond_0

    const-string v1, ", mRemoveNotification)"

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
