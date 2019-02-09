.class public final enum Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
.super Ljava/lang/Enum;
.source "SessionInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/session/SessionInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

.field public static final enum BACKGROUND:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

.field public static final enum PUSH:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

.field public static final enum STANDARD:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->STANDARD:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    .line 18
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    .line 19
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->PUSH:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    sget-object v1, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->STANDARD:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->PUSH:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->$VALUES:[Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->$VALUES:[Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    invoke-virtual {v0}, [Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    return-object v0
.end method
