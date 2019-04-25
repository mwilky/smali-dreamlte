.class public final enum Lcom/trustonic/teeclient/kinibichecker/TEEError;
.super Ljava/lang/Enum;
.source "TEEError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustonic/teeclient/kinibichecker/TEEError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustonic/teeclient/kinibichecker/TEEError;

.field public static final enum TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

.field public static final enum TEE_PROXY_INSTALLATION_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

.field public static final enum TEE_PROXY_INTERNAL_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;

.field public static final enum TEE_PROXY_LICENSE_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

.field public static final enum TEE_PROXY_UNREACHABLE_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v1, "TEE_NOT_SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/TEEError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v1, "TEE_PROXY_INSTALLATION_REQUIRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/trustonic/teeclient/kinibichecker/TEEError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_INSTALLATION_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v1, "TEE_PROXY_LICENSE_REQUIRED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/trustonic/teeclient/kinibichecker/TEEError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_LICENSE_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v1, "TEE_PROXY_UNREACHABLE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/trustonic/teeclient/kinibichecker/TEEError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_UNREACHABLE_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v1, "TEE_PROXY_INTERNAL_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/trustonic/teeclient/kinibichecker/TEEError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_INTERNAL_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/trustonic/teeclient/kinibichecker/TEEError;

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_INSTALLATION_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_LICENSE_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_UNREACHABLE_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_INTERNAL_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;->$VALUES:[Lcom/trustonic/teeclient/kinibichecker/TEEError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trustonic/teeclient/kinibichecker/TEEError;
    .locals 1

    const-class v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    return-object v0
.end method

.method public static values()[Lcom/trustonic/teeclient/kinibichecker/TEEError;
    .locals 1

    sget-object v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;->$VALUES:[Lcom/trustonic/teeclient/kinibichecker/TEEError;

    invoke-virtual {v0}, [Lcom/trustonic/teeclient/kinibichecker/TEEError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustonic/teeclient/kinibichecker/TEEError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/trustonic/teeclient/kinibichecker/TEEError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError$1;->$SwitchMap$com$trustonic$teeclient$kinibichecker$TEEError:[I

    invoke-virtual {p0}, Lcom/trustonic/teeclient/kinibichecker/TEEError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "unKnown Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "please check issue causes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v1, "TEE proxy cannot reachable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v1, "TDP license required"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v1, "Downloadable proxy required"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string v1, "TEE not supported on this device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
