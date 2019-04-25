.class Lcom/trustonic/teeclient/TeeClientJni;
.super Ljava/lang/Object;
.source "TeeClientJni.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MC_DEVICE_ID_DEFAULT:I = 0x0

.field private static final MC_DRV_ERR_BULK_MAPPING:I = 0x13

.field private static final MC_DRV_ERR_BULK_UNMAPPING:I = 0x14

.field private static final MC_DRV_ERR_CONTAINER_LOCKED:I = 0x1b

.field private static final MC_DRV_ERR_CONTAINER_TYPE_MISMATCH:I = 0x1a

.field private static final MC_DRV_ERR_CONTAINER_VERSION:I = 0x18

.field private static final MC_DRV_ERR_DAEMON_DEVICE_NOT_OPEN:I = 0x21

.field private static final MC_DRV_ERR_DAEMON_UNREACHABLE:I = 0xf

.field private static final MC_DRV_ERR_DAEMON_VERSION:I = 0x17

.field private static final MC_DRV_ERR_FREE_MEMORY_FAILED:I = 0xd

.field private static final MC_DRV_ERR_INIT:I = 0x5

.field private static final MC_DRV_ERR_INTERRUPTED_BY_SIGNAL:I = 0x23

.field private static final MC_DRV_ERR_INVALID_DEVICE_FILE:I = 0x10

.field private static final MC_DRV_ERR_INVALID_OPERATION:I = 0x9

.field private static final MC_DRV_ERR_INVALID_PARAMETER:I = 0x11

.field private static final MC_DRV_ERR_INVALID_RESPONSE:I = 0xa

.field private static final MC_DRV_ERR_KERNEL_MODULE:I = 0x12

.field private static final MC_DRV_ERR_NOTIFICATION:I = 0x2

.field private static final MC_DRV_ERR_NOT_IMPLEMENTED:I = 0x3

.field private static final MC_DRV_ERR_NO_FREE_INSTANCES:I = 0x27

.field private static final MC_DRV_ERR_NO_FREE_MEMORY:I = 0xc

.field private static final MC_DRV_ERR_NQ_FAILED:I = 0x16

.field private static final MC_DRV_ERR_OUT_OF_RESOURCES:I = 0x4

.field private static final MC_DRV_ERR_SERVICE_BLOCKED:I = 0x24

.field private static final MC_DRV_ERR_SERVICE_KILLED:I = 0x26

.field private static final MC_DRV_ERR_SERVICE_LOCKED:I = 0x25

.field private static final MC_DRV_ERR_SESSION_PENDING:I = 0xe

.field private static final MC_DRV_ERR_SP_NO_CHILD:I = 0x1c

.field private static final MC_DRV_ERR_TA_ATTESTATION_ERROR:I = 0x22

.field private static final MC_DRV_ERR_TA_HEADER_ERROR:I = 0x28

.field private static final MC_DRV_ERR_TIMEOUT:I = 0xb

.field private static final MC_DRV_ERR_TL_NO_CHILD:I = 0x1d

.field private static final MC_DRV_ERR_UNKNOWN:I = 0x6

.field private static final MC_DRV_ERR_UNKNOWN_DEVICE:I = 0x7

.field private static final MC_DRV_ERR_UNKNOWN_SESSION:I = 0x8

.field private static final MC_DRV_ERR_UNWRAP_ROOT_FAILED:I = 0x1e

.field private static final MC_DRV_ERR_UNWRAP_SP_FAILED:I = 0x1f

.field private static final MC_DRV_ERR_UNWRAP_TRUSTLET_FAILED:I = 0x20

.field private static final MC_DRV_ERR_WRONG_PUBLIC_KEY:I = 0x19

.field private static final MC_DRV_INFO_NOTIFICATION:I = 0x15

.field private static final MC_DRV_NO_NOTIFICATION:I = 0x1

.field private static final MC_DRV_OK:I


# instance fields
.field private application_context_:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/trustonic/teeclient/TeeClientJni;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_JAVA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trustonic/teeclient/TeeClientJni;->LOG_TAG:Ljava/lang/String;

    const-string v0, "TeeClient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trustonic/teeclient/TeeClientJni;->application_context_:Landroid/content/Context;

    iput-object p1, p0, Lcom/trustonic/teeclient/TeeClientJni;->application_context_:Landroid/content/Context;

    return-void
.end method

.method private native jniMcCloseDevice(I)I
.end method

.method private native jniMcOpenDevice(ILandroid/content/Context;)I
.end method

.method private mcErrorToMcException(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/trustonic/teeclient/TeeException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_UNKNOWN_ERROR;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_UNKNOWN_ERROR;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TA_HEADER_ERROR;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TA_HEADER_ERROR;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NO_FREE_INSTANCES;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NO_FREE_INSTANCES;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SERVICE_KILLED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SERVICE_KILLED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SERVICE_LOCKED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SERVICE_LOCKED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SERVICE_BLOCKED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SERVICE_BLOCKED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INTERRUPTED_BY_SIGNAL;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INTERRUPTED_BY_SIGNAL;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TA_ATTESTATION_ERROR;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TA_ATTESTATION_ERROR;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_DAEMON_DEVICE_NOT_OPEN;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_DAEMON_DEVICE_NOT_OPEN;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNWRAP_TRUSTLET_FAILED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNWRAP_TRUSTLET_FAILED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNWRAP_SP_FAILED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNWRAP_SP_FAILED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNWRAP_ROOT_FAILED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNWRAP_ROOT_FAILED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TL_NO_CHILD;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TL_NO_CHILD;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SP_NO_CHILD;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SP_NO_CHILD;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_CONTAINER_LOCKED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_CONTAINER_LOCKED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_CONTAINER_TYPE_MISMATCH;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_CONTAINER_TYPE_MISMATCH;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_WRONG_PUBLIC_KEY;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_WRONG_PUBLIC_KEY;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_CONTAINER_VERSION;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_CONTAINER_VERSION;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_DAEMON_VERSION;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_DAEMON_VERSION;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NQ_FAILED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NQ_FAILED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_INFO_NOTIFICATION;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_INFO_NOTIFICATION;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_BULK_UNMAPPING;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_BULK_UNMAPPING;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_BULK_MAPPING;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_BULK_MAPPING;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_KERNEL_MODULE;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_KERNEL_MODULE;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_17
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_PARAMETER;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_PARAMETER;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_DEVICE_FILE;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_DEVICE_FILE;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_DAEMON_UNREACHABLE;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_DAEMON_UNREACHABLE;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SESSION_PENDING;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_SESSION_PENDING;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_FREE_MEMORY_FAILED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_FREE_MEMORY_FAILED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NO_FREE_MEMORY;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NO_FREE_MEMORY;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TIMEOUT;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_TIMEOUT;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_RESPONSE;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_RESPONSE;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_OPERATION;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INVALID_OPERATION;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNKNOWN_SESSION;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNKNOWN_SESSION;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_21
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNKNOWN_DEVICE;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNKNOWN_DEVICE;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNKNOWN;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_UNKNOWN;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INIT;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INIT;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_OUT_OF_RESOURCES;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_OUT_OF_RESOURCES;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NOT_IMPLEMENTED;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NOT_IMPLEMENTED;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NOTIFICATION;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_NOTIFICATION;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    new-instance v0, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_NO_NOTIFICATION;

    invoke-direct {v0, p2}, Lcom/trustonic/teeclient/TeeMcException$MC_DRV_NO_NOTIFICATION;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28
    nop

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public mcCloseDevice(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/trustonic/teeclient/TeeException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/trustonic/teeclient/TeeClientJni;->jniMcCloseDevice(I)I

    move-result v0

    sget-object v1, Lcom/trustonic/teeclient/TeeClientJni;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mcCloseDevice deviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") returned 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "mcCloseDevice"

    invoke-direct {p0, v0, v1}, Lcom/trustonic/teeclient/TeeClientJni;->mcErrorToMcException(ILjava/lang/String;)V

    return-void
.end method

.method public mcOpenDevice(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/trustonic/teeclient/TeeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/trustonic/teeclient/TeeClientJni;->application_context_:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/trustonic/teeclient/TeeClientJni;->jniMcOpenDevice(ILandroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/trustonic/teeclient/TeeClientJni;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mcOpenDevice deviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") returned 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "mcOpenDevice"

    invoke-direct {p0, v0, v1}, Lcom/trustonic/teeclient/TeeClientJni;->mcErrorToMcException(ILjava/lang/String;)V

    return-void
.end method
