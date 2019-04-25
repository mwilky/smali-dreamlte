.class public Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;
.super Ljava/lang/Object;
.source "FirewallRuleValidator.java"


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final APP_IDENTITY:Ljava/lang/String; = "app identity"

.field private static final DIRECTION:Ljava/lang/String; = "direction"

.field private static final NETWORK_INTERFACE:Ljava/lang/String; = "network interface"

.field private static final PARAMETERS:Ljava/lang/String; = "Parameter(s): "

.field private static final PORT_LOCATION:Ljava/lang/String; = "port location"

.field private static final PORT_NUMBER:Ljava/lang/String; = "port number"

.field private static final PROTOCOL:Ljava/lang/String; = "protocol"

.field private static final SIZE_IPV4_ADDRESS:I = 0x4

.field private static final SIZE_IPV6_ADDRESS:I = 0x10

.field private static final SIZE_SHORT_INT:I = 0x2

.field private static final SOURCE_ADDRESS:Ljava/lang/String; = "source address"

.field private static final SOURCE_PORT_NUMBER:Ljava/lang/String; = "source port number"

.field private static final TARGET_IP:Ljava/lang/String; = "target IP"

.field private static final TARGET_PORT_NUMBER:Ljava/lang/String; = "target port number"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertFromHexToInt(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p0, :cond_e

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_4

    aget-object v1, v0, v4

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    rsub-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_0
    if-ge v4, v5, :cond_1

    const-string v7, "0:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_3

    sub-int v7, v4, v5

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v2, :cond_2

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    aget-object v1, v0, v4

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    rsub-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_2
    if-ge v4, v5, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_3
    if-ge v4, v3, :cond_7

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v2, :cond_6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_8
    array-length v1, v0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_d

    aget-object v1, v0, v4

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v0, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v1

    rsub-int/lit8 v6, v6, 0x8

    array-length v7, v5

    sub-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_4
    array-length v8, v1

    if-ge v4, v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    array-length v4, v1

    :goto_5
    array-length v8, v1

    add-int/2addr v8, v6

    if-ge v4, v8, :cond_a

    const-string v8, "0:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    array-length v4, v1

    add-int/2addr v4, v6

    :goto_6
    if-ge v4, v3, :cond_c

    array-length v8, v1

    sub-int v8, v4, v8

    sub-int/2addr v8, v6

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v2, :cond_b

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_d
    const/4 v1, 0x0

    return-object v1

    :cond_e
    :goto_7
    return-object p0
.end method

.method private static isIpv4MappedAddress([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-byte v1, p0, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method private static translateIpv4MappedAddress([B)[B
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->isIpv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static translateIpv4TextualAddress(Ljava/lang/String;)[B
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x4

    new-array v3, v0, [B

    const-string v4, "\\."

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    :try_start_0
    array-length v5, v4

    const/16 v6, 0x10

    const-wide/32 v7, 0xffffff

    const/4 v9, 0x3

    const/16 v10, 0x8

    const-wide/32 v11, 0xffff

    const/4 v13, 0x2

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0xff

    packed-switch v5, :pswitch_data_0

    return-object v2

    :pswitch_0
    nop

    :goto_0
    move/from16 v5, v17

    if-ge v5, v0, :cond_3

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v6, v15

    if-ltz v8, :cond_2

    cmp-long v8, v6, v18

    if-lez v8, :cond_1

    goto :goto_1

    :cond_1
    and-long v8, v6, v18

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    add-int/lit8 v17, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    goto/16 :goto_7

    :pswitch_1
    nop

    :goto_2
    move/from16 v0, v17

    if-ge v0, v13, :cond_6

    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v15

    if-ltz v7, :cond_5

    cmp-long v7, v5, v18

    if-lez v7, :cond_4

    goto :goto_3

    :cond_4
    and-long v7, v5, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    add-int/lit8 v17, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v2

    :cond_6
    aget-object v0, v4, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, v15

    if-ltz v0, :cond_8

    cmp-long v0, v5, v11

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    shr-long v7, v5, v10

    and-long v7, v7, v18

    long-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, v3, v13

    and-long v7, v5, v18

    long-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, v3, v9

    goto/16 :goto_7

    :cond_8
    :goto_4
    return-object v2

    :pswitch_2
    aget-object v0, v4, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v9, v15

    if-ltz v0, :cond_c

    cmp-long v0, v9, v18

    if-lez v0, :cond_9

    goto :goto_6

    :cond_9
    and-long v11, v9, v18

    long-to-int v0, v11

    int-to-byte v0, v0

    aput-byte v0, v3, v17

    aget-object v0, v4, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v9, v15

    if-ltz v0, :cond_b

    cmp-long v0, v9, v7

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    shr-long v5, v9, v6

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v14

    const-wide/32 v5, 0xffff

    and-long/2addr v5, v9

    const/16 v0, 0x8

    shr-long/2addr v5, v0

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v13

    and-long v5, v9, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x3

    aput-byte v0, v3, v5

    goto :goto_7

    :cond_b
    :goto_5
    return-object v2

    :cond_c
    :goto_6
    return-object v2

    :pswitch_3
    aget-object v0, v4, v17

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v15

    if-ltz v0, :cond_e

    const-wide v11, 0xffffffffL

    cmp-long v0, v9, v11

    if-lez v0, :cond_d

    goto :goto_8

    :cond_d
    const/16 v0, 0x18

    shr-long v11, v9, v0

    and-long v11, v11, v18

    long-to-int v0, v11

    int-to-byte v0, v0

    aput-byte v0, v3, v17

    and-long/2addr v7, v9

    shr-long v5, v7, v6

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v14

    const-wide/32 v5, 0xffff

    and-long/2addr v5, v9

    const/16 v0, 0x8

    shr-long/2addr v5, v0

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v13

    and-long v5, v9, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x3

    aput-byte v0, v3, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_7
    nop

    return-object v3

    :cond_e
    :goto_8
    return-object v2

    :catch_0
    move-exception v0

    return-object v2

    :cond_f
    :goto_9
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validadeIpv4Range(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    aget-object v3, v1, v0

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_5

    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    if-eqz v4, :cond_5

    array-length v5, v4

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_4

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_0
    aget-object v9, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v7, v9

    aget-object v9, v4, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    nop

    if-le v7, v8, :cond_2

    return v0

    :cond_2
    if-ge v7, v8, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v0
.end method

.method public static validadeIpv6Range(Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v0

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    :cond_1
    aget-object v3, v1, v2

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_2
    aget-object v3, v1, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_7

    array-length v5, v3

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    if-eqz v4, :cond_7

    array-length v5, v4

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v7, v3, v5

    invoke-static {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertFromHexToInt(Ljava/lang/String;)J

    move-result-wide v7

    aget-object v9, v4, v5

    invoke-static {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertFromHexToInt(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_4

    return v0

    :cond_4
    cmp-long v11, v7, v9

    if-gez v11, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v0

    :cond_8
    return v0
.end method

.method public static validadePortNumberRange(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const/4 v4, -0x1

    :try_start_0
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    nop

    if-le v3, v4, :cond_1

    return v0

    :cond_1
    return v2

    :catch_0
    move-exception v2

    return v0

    :cond_2
    return v0
.end method

.method public static validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Rule is null."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Parameter(s): address"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Parameter(s): address"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    const-string v4, "Parameter(s): port number"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, ", port number"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_5

    const-string v4, "Parameter(s): port location"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v4, ", port location"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v1, 0x0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_7
    if-eqz v1, :cond_8

    const-string v4, "Parameter(s): app identity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v4, ", app identity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v1, 0x0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v4

    if-nez v4, :cond_b

    if-eqz v1, :cond_a

    const-string v4, "Parameter(s): network interface"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    const-string v4, ", network interface"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v1, 0x0

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v4

    if-nez v4, :cond_d

    if-eqz v1, :cond_c

    const-string v4, "Parameter(s): protocol"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    const-string v4, ", protocol"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/4 v1, 0x0

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v4

    if-nez v4, :cond_f

    if-eqz v1, :cond_e

    const-string v4, "Parameter(s): direction"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    const-string v4, ", direction"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/4 v1, 0x0

    :cond_f
    if-nez v1, :cond_10

    const-string v4, " is(are) invalid."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4

    :cond_10
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Parameters validated successfully"

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4
.end method

.method public static validateDenyRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method public static validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Rule is null."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Failed to validate Rule."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateDenyRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validateHostName(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xff

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v0

    :goto_0
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    aget-object v5, v1, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_3

    const/16 v6, 0x7a

    if-le v5, v6, :cond_4

    :cond_3
    const/16 v6, 0x41

    if-lt v5, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v3, :cond_7

    return v0

    :cond_7
    const/4 v4, 0x0

    move v5, v4

    move v4, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    array-length v4, v1

    if-lt v5, v4, :cond_a

    return v0

    :cond_a
    array-length v4, v1

    move v6, v0

    :goto_3
    if-ge v6, v4, :cond_c

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x3f

    if-le v8, v9, :cond_b

    return v0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    const-string v4, "^[A-Za-z0-9-]+$"

    array-length v6, v1

    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_f

    aget-object v8, v1, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    return v0

    :cond_f
    return v2
.end method

.method public static validateIpv4Address(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validateIpv6Address(Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    new-array v7, v6, [B

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_1

    return v1

    :cond_1
    move v8, v3

    move v10, v8

    move v8, v4

    move v4, v2

    move v2, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, -0x1

    if-ge v3, v11, :cond_e

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-eq v13, v12, :cond_3

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v13

    const v12, 0xffff

    if-le v5, v12, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x1

    nop

    :goto_1
    move v3, v11

    goto :goto_0

    :cond_3
    if-ne v3, v9, :cond_8

    move v10, v11

    if-nez v2, :cond_5

    if-eq v4, v12, :cond_4

    return v1

    :cond_4
    move v4, v8

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_6

    return v1

    :cond_6
    add-int/lit8 v12, v8, 0x2

    if-le v12, v6, :cond_7

    return v1

    :cond_7
    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v7, v8

    add-int/lit8 v8, v12, 0x1

    and-int/lit16 v14, v5, 0xff

    int-to-byte v14, v14

    aput-byte v14, v7, v12

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    const/16 v9, 0x2e

    if-ne v3, v9, :cond_d

    add-int/lit8 v14, v8, 0x4

    if-gt v14, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v0, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move v6, v15

    move v15, v1

    :goto_2
    invoke-virtual {v14, v9, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v15, v1

    if-eq v1, v12, :cond_9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    if-eq v6, v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v1, 0x0

    invoke-static {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_b

    return v1

    :cond_b
    const/4 v1, 0x0

    :goto_3
    const/4 v12, 0x4

    if-ge v1, v12, :cond_c

    add-int/lit8 v12, v8, 0x1

    aget-byte v17, v9, v1

    aput-byte v17, v7, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v12

    const/4 v12, -0x1

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    nop

    move v3, v11

    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    return v1

    :cond_e
    :goto_4
    if-eqz v2, :cond_10

    add-int/lit8 v6, v8, 0x2

    const/16 v9, 0x10

    if-le v6, v9, :cond_f

    return v1

    :cond_f
    add-int/lit8 v1, v8, 0x1

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    add-int/lit8 v8, v1, 0x1

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v1

    :cond_10
    const/4 v1, -0x1

    if-eq v4, v1, :cond_13

    sub-int v1, v8, v4

    const/16 v6, 0x10

    if-ne v8, v6, :cond_11

    const/4 v6, 0x0

    return v6

    :cond_11
    const/4 v3, 0x1

    :goto_5
    if-gt v3, v1, :cond_12

    rsub-int/lit8 v9, v3, 0x10

    add-int v6, v4, v1

    sub-int/2addr v6, v3

    aget-byte v6, v7, v6

    aput-byte v6, v7, v9

    add-int v6, v4, v1

    sub-int/2addr v6, v3

    const/4 v9, 0x0

    aput-byte v9, v7, v6

    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x10

    goto :goto_5

    :cond_12
    const/16 v8, 0x10

    :cond_13
    const/16 v1, 0x10

    if-eq v8, v1, :cond_14

    const/4 v1, 0x0

    return v1

    :cond_14
    invoke-static {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4MappedAddress([B)[B

    move-result-object v1

    const/4 v6, 0x1

    if-eqz v1, :cond_16

    if-eqz v1, :cond_15

    move/from16 v16, v6

    goto :goto_6

    :cond_15
    const/16 v16, 0x0

    :goto_6
    return v16

    :cond_16
    return v6

    :cond_17
    :goto_7
    const/4 v1, 0x0

    return v1
.end method

.method public static validatePackageName(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "*"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    array-length v3, v1

    if-lt v4, v3, :cond_4

    return v0

    :cond_4
    const-string v3, "^[A-Za-z0-9_]+$"

    array-length v5, v1

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_7

    aget-object v7, v1, v6

    invoke-virtual {v7, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5f

    if-eq v8, v9, :cond_6

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_5

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v0

    :cond_7
    return v2
.end method

.method public static validatePortNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    const v2, 0xffff

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public static validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Rule is null."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Parameter(s): address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Parameter(s): address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    const-string v4, "Parameter(s): port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, ", port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    if-eqz v0, :cond_6

    const-string v4, "Parameter(s): app identity"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v4, ", app identity"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v0, 0x0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v0, :cond_8

    const-string v4, "Parameter(s): protocol"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v4, ", protocol"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v0, 0x0

    :cond_9
    if-nez v0, :cond_a

    const-string v4, " is(are) invalid."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4

    :cond_a
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Parameters validated successfully"

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4
.end method

.method public static validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 9

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Rule is null."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Parameter(s): source address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Parameter(s): source address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    const-string v4, "Parameter(s): source port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, ", source port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Parameter(s): target IP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Parameter(s): target IP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    const-string v5, "Parameter(s): target port number"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v5, ", target port number"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v0, 0x0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_a
    if-eqz v0, :cond_b

    const-string v5, "Parameter(s): app identity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    const-string v5, ", app identity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v0, 0x0

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v5

    if-nez v5, :cond_e

    if-eqz v0, :cond_d

    const-string v5, "Parameter(s): network interface"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    const-string v5, ", network interface"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/4 v0, 0x0

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v5

    if-nez v5, :cond_10

    if-eqz v0, :cond_f

    const-string v5, "Parameter(s): protocol"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_f
    const-string v5, ", protocol"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/4 v0, 0x0

    :cond_10
    if-nez v0, :cond_11

    const-string v5, " is(are) invalid."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v5

    :cond_11
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Parameters validated successfully"

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v5
.end method
