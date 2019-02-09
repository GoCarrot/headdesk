.class public final Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
.super Ljava/lang/Object;
.source "PushConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public autoRegister:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto_register"
    .end annotation
.end field

.field public pushTokenTtl:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "push_token_ttl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->isValid()Z

    move-result v0

    return v0
.end method

.method private isValid()Z
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->pushTokenTtl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 122
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 124
    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    .line 125
    .local v0, "that":Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    iget-wide v4, v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->pushTokenTtl:J

    iget-wide v6, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->pushTokenTtl:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->autoRegister:Z

    iget-boolean v4, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->autoRegister:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
