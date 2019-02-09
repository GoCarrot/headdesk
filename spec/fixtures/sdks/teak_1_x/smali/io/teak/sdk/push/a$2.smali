.class final Lio/teak/sdk/push/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/InstanceIDListenerService$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/push/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/push/a;


# direct methods
.method constructor <init>(Lio/teak/sdk/push/a;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lio/teak/sdk/push/a$2;->a:Lio/teak/sdk/push/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lio/teak/sdk/push/a$2;->a:Lio/teak/sdk/push/a;

    invoke-static {v0}, Lio/teak/sdk/push/a;->a(Lio/teak/sdk/push/a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "google.gcm.sender_id"

    const-string v2, "InstanceIDListenerService requested a token refresh, but gcmSenderId is null."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/push/a$2;->a:Lio/teak/sdk/push/a;

    iget-object v1, p0, Lio/teak/sdk/push/a$2;->a:Lio/teak/sdk/push/a;

    invoke-static {v1}, Lio/teak/sdk/push/a;->a(Lio/teak/sdk/push/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/teak/sdk/push/a;->requestPushKey(Ljava/lang/String;)V

    goto :goto_0
.end method
