.class final Lcom/android/server/notification/NotificationManagerService$ToastRecord;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToastRecord"
.end annotation


# instance fields
.field callback:Landroid/app/ITransientNotification;

.field duration:I

.field final pid:I

.field final pkg:Ljava/lang/String;

.field token:Landroid/os/Binder;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/app/ITransientNotification;ILandroid/os/Binder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    return-void
.end method

.method update(Landroid/app/ITransientNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    return-void
.end method
