.class public final enum Lcom/trustonic/teeclient/BindSession$BindReturnCode;
.super Ljava/lang/Enum;
.source "TeeBind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustonic/teeclient/BindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BindReturnCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustonic/teeclient/BindSession$BindReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustonic/teeclient/BindSession$BindReturnCode;

.field public static final enum FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

.field public static final enum OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

.field public static final enum OVERLOAD:Lcom/trustonic/teeclient/BindSession$BindReturnCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    new-instance v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    const-string v1, "OVERLOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OVERLOAD:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    new-instance v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    const-string v1, "FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OVERLOAD:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->$VALUES:[Lcom/trustonic/teeclient/BindSession$BindReturnCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/trustonic/teeclient/BindSession$BindReturnCode;
    .locals 1

    const-class v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    return-object v0
.end method

.method public static values()[Lcom/trustonic/teeclient/BindSession$BindReturnCode;
    .locals 1

    sget-object v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->$VALUES:[Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    invoke-virtual {v0}, [Lcom/trustonic/teeclient/BindSession$BindReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    return-object v0
.end method
