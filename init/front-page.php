<?php get_header(); ?>

<?php if($hero = get_field('hero')){ ?>
    <section class="top_panel">
        <?php if($hero['image']) { ?>
            <div class="top_panel_img container" style="background-image: url(<?php echo $hero['image'] ?>);"></div>
        <?php } ?>
        <div class="top_panel_container container">
            <div class="scroll_down">
                <span><?php echo $hero['scroll_down_text']; ?></span>
                <img src="<?php echo get_template_directory_uri() . '/images/arrow_down.jpg' ?>" alt="">
            </div>
            <?php echo $hero['title'] ?>
            <?php
            $link = $hero['button'];
            if($link) {
                $link_url = $link['url'];
                $link_title = $link['title'];
                $link_target = $link['target'] ? $link['target'] : '_self'; ?>
                <a href="<?php echo $link_url ?>" target="<?php echo esc_attr( $link_target ); ?>" class="button"><?php echo $link_title ?></a>
            <?php } ?>
        </div>
    </section>
<?php } ?>

<section class="vehicle">
    <div class="container">
        <?php the_field('vehicles_text') ?>
        <div class="posts_filters">
            <?php
            $man_terms = get_terms( [
                'taxonomy'   => 'manufacturer',
                'hide_empty' => true,
                'orderby'    => 'id'
            ] );
            $class_terms = get_terms( [
                'taxonomy'   => 'class',
                'hide_empty' => true,
                'orderby'    => 'id'
            ] );
            if ( !empty( $man_terms ) || !empty( $class_terms ) ) : ?>
                <div class="filters__row" data-aos="fade-in">
                    <form>
                        <input type="hidden" name="action" value="load_posts_ajax">
                        <input type="hidden" name="paged" value="1" id="show_page">
                        <div class="posts_filters__wrap flex__mob">
                            <div class="filters">
                                <div class="filters__holder">
                                    <select class="filters__dropdown filters__dropdown_man">
                                        <option value="*">Select Manufacturer</option>
                                        <?php foreach($man_terms as $term) : ?>
                                            <option value="<?php echo $term->slug; ?>"><?php echo $term->name; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="filters">
                                <div class="filters__holder">
                                    <select class="filters__dropdown filters__dropdown_class">
                                        <option value="*">Select Class</option>
                                        <?php foreach($class_terms as $term) : ?>
                                            <option value="<?php echo $term->slug; ?>"><?php echo $term->name; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <a href="javascript:;" class="button filter_button">Filter</a>
                        </div>
                    </form>
                </div>
            <?php endif; ?>
        </div>

        <div class="posts">
            <div class="posts_container">
                <?php load_posts_ajax(); ?>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>
