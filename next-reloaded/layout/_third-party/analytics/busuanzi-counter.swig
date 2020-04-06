{% if theme.busuanzi_count.enable %}
<div class="busuanzi-count">
  <script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

  {% if theme.busuanzi_count.total_visitors %}
    <span class="post-meta-item-icon">
      <i class="fa fa-{{ theme.busuanzi_count.total_visitors_icon }}"></i>
    </span>
    <span class="site-uv" title="{{ __('footer.total_visitors') }}">
      <span class="busuanzi-value" id="busuanzi_value_site_uv"></span>
    </span>
  {% endif %}

  {% if theme.busuanzi_count.total_visitors and theme.busuanzi_count.total_views %}
    <span class="post-meta-divider">|</span>
  {% endif %}

  {% if theme.busuanzi_count.total_views %}
    <span class="post-meta-item-icon">
      <i class="fa fa-{{ theme.busuanzi_count.total_views_icon }}"></i>
    </span>
    <span class="site-pv" title="{{ __('footer.total_views') }}">
      <span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
    </span>
  {% endif %}

    <!-- 不蒜子计数初始值纠正 -->
<script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        var int = setInterval(fixCount, 500);
        var busuanziSiteOffset = parseInt({{ theme.busuanzi_count.busuanzi_site_offset }});
        function fixCount() {
            if ($("#busuanzi_container_site_pv").css("display") != "none") {
                clearInterval(int);
                $("#busuanzi_value_site_pv").html(parseInt($("#busuanzi_value_site_pv").html()) + busuanziSiteOffset);
            }
            if ($("#busuanzi_container_site_pv").css("display") != "none") {
                clearInterval(int);
                $("#busuanzi_value_site_uv").html(parseInt($("#busuanzi_value_site_uv").html()) + busuanziSiteOffset);
            }
        }
    });
</script>

</div>
{% endif %}
