.class public final enum Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
.super Ljava/lang/Enum;
.source "PushIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/PushIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UriTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

.field public static final enum ACTIVITY:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

.field public static final enum CUSTOM:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

.field public static final enum DEFAULT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

.field public static final enum INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

.field public static final enum PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->DEFAULT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 321
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->CUSTOM:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 322
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 323
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    const-string v1, "PLACEMENT"

    invoke-direct {v0, v1, v5}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 324
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v6}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ACTIVITY:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 319
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->DEFAULT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->CUSTOM:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ACTIVITY:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    aput-object v1, v0, v6

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->$VALUES:[Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 319
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->$VALUES:[Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    invoke-virtual {v0}, [Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    return-object v0
.end method
