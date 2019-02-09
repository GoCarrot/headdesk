.class final Lio/teak/sdk/a/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/d;-><init>(Landroid/content/Context;Lio/teak/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/a/d;


# direct methods
.method constructor <init>(Lio/teak/sdk/a/d;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lio/teak/sdk/a/d$2;->a:Lio/teak/sdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/n;)V
    .locals 3
    .param p1    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lio/teak/sdk/a/d$2;->a:Lio/teak/sdk/a/d;

    invoke-static {v0}, Lio/teak/sdk/a/d;->a(Lio/teak/sdk/a/d;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "gcmSenderId"

    iget-object v2, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lio/teak/sdk/a/d$2;->a:Lio/teak/sdk/a/d;

    invoke-static {v0}, Lio/teak/sdk/a/d;->a(Lio/teak/sdk/a/d;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "firebaseAppId"

    iget-object v2, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
