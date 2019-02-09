.class final Lio/teak/sdk/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/teak/sdk/m;Lio/teak/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lio/teak/sdk/j;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 122
    iput-object p2, p0, Lio/teak/sdk/j$1;->a:Ljava/util/HashMap;

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
    .line 125
    instance-of v0, p1, Lio/teak/sdk/c/o;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lio/teak/sdk/j$1;->a:Ljava/util/HashMap;

    const-string v1, "id"

    check-cast p1, Lio/teak/sdk/c/o;

    iget-object v2, p1, Lio/teak/sdk/c/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    return-void
.end method
