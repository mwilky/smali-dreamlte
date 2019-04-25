.class final Lcom/android/server/am/Pageboost$VramdiskdProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskdProxy"
.end annotation


# static fields
.field public static final VRAMDISK_ADD:I = 0x1

.field public static final VRAMDISK_HOTFILE_ADD:I = 0x3

.field public static final VRAMDISK_HOTFILE_REMOVE_ALL:I = 0x4

.field public static final VRAMDISK_REMOVE:I = 0x2

.field private static conn:Lcom/android/server/am/Pageboost$DaemonConnector; = null

.field private static final socketName:Ljava/lang/String; = "vramdiskd"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitVramdiskdProxy()V
    .locals 2

    new-instance v0, Lcom/android/server/am/Pageboost$DaemonConnector;

    const-string/jumbo v1, "vramdiskd"

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    return-void
.end method

.method public static executeCmd(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string v0, "c,"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "h,"

    goto :goto_0

    :pswitch_2
    const-string v0, "d,"

    goto :goto_0

    :pswitch_3
    const-string v0, "a,"

    nop

    :goto_0
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send string to vramdisk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/android/server/am/Pageboost$VramdiskdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v3, v2}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
