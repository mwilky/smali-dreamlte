.class public Lcom/samsung/android/knox/sso/common/GenericSSOConstants$KerberosRequestKeys;
.super Ljava/lang/Object;
.source "GenericSSOConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sso/common/GenericSSOConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KerberosRequestKeys"
.end annotation


# static fields
.field public static final ADMIN_SERVER:Ljava/lang/String; = "REALMS_ADMIN_SERVER"

.field public static final CANONICALIZE:Ljava/lang/String; = "LIBDEFAULTS_CANONICALIZE"

.field public static final DEFAULT_DOMAIN:Ljava/lang/String; = "REALMS_DEFAULT_DOMAIN"

.field public static final DEFAULT_REALM:Ljava/lang/String; = "LIBDEFAULTS_DEFAULT_REALM"

.field public static final DNS_CANONICALIZE_HOSTNAME:Ljava/lang/String; = "LIBDEFAULTS_DNS_CANONICALIZE_HOSTNAME"

.field public static final DNS_LOOKUP_KDC:Ljava/lang/String; = "LIBDEFAULTS_DNS_LOOKUP_KDC"

.field public static final DNS_LOOKUP_REALM:Ljava/lang/String; = "LIBDEFAULTS_DNS_LOOKUP_REALM"

.field public static final FEDERATION_SERVER_URL:Ljava/lang/String; = "FEDERATION_SERVER_URL"

.field public static final FORWARDABLE:Ljava/lang/String; = "LIBDEFAULTS_FORWARDABLE"

.field public static final KDC:Ljava/lang/String; = "REALMS_KDC"

.field public static final KPASSWD_SERVER:Ljava/lang/String; = "REALMS_KPASSWD_SERVER"

.field public static final KRB5_CONFIG_DATA:Ljava/lang/String; = "KRB5_CONFIG_DATA"

.field public static final MASTER_KDC:Ljava/lang/String; = "REALMS_MASTER_KDC"

.field public static final NOADDRESSES:Ljava/lang/String; = "LIBDEFAULTS_NOADDRESSES"

.field public static final PKINIT_ANCHORS:Ljava/lang/String; = "REALMS_PKINIT_ANCHORS"

.field public static final PKINIT_CA_CERT:Ljava/lang/String; = "PKINIT_CA_CERT"

.field public static final PKINIT_CERT_MATCH:Ljava/lang/String; = "REALMS_PKINIT_CERT_MATCH"

.field public static final PKINIT_EKU_CHECKING:Ljava/lang/String; = "REALMS_PKINIT_EKU_CHECKING"

.field public static final PKINIT_IDENTITIES:Ljava/lang/String; = "REALMS_PKINIT_IDENTITIES"

.field public static final PKINIT_KDC_HOSTNAME:Ljava/lang/String; = "REALMS_PKINIT_KDC_HOSTNAME"

.field public static final PKINIT_POOL:Ljava/lang/String; = "REALMS_PKINIT_POOL"

.field public static final PKINIT_REQUIRE_CRL_CHECKING:Ljava/lang/String; = "REALMS_PKINIT_REQUIRE_CRL_CHECKING"

.field public static final PKINIT_REVOKE:Ljava/lang/String; = "REALMS_PKINIT_REVOKE"

.field public static final PKINIT_USER_CERT_ALIAS:Ljava/lang/String; = "PKINIT_USER_CERT_ALIAS"

.field public static final RDNS:Ljava/lang/String; = "LIBDEFAULTS_RDNS"

.field public static final RENEW_LIFETIME:Ljava/lang/String; = "LIBDEFAULTS_RENEW_LIFETIME"

.field public static final TICKET_LIFETIME:Ljava/lang/String; = "LIBDEFAULTS_TICKET_LIFETIME"

.field public static final UDP_PREFERENCE_LIMIT:Ljava/lang/String; = "LIBDEFAULTS_UDP_PREFERENCE_LIMIT"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
