.class public Lcom/android/server/enterprise/log/ConsoleLogger;
.super Lcom/android/server/enterprise/log/Logger;
.source "ConsoleLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConsoleLogger"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isLoggable(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/enterprise/log/ConsoleLogger;->level:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/log/ConsoleLogger;->level:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/ConsoleLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
