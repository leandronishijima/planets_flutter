import 'package:planets_flutter/model/Planet.dart';

class PlanetDao {
  static List<Planet> getAllPlanets() {
    return [
      const Planet(
          id: "1",
          name: "Mars",
          location: "Milkyway Galaxy",
          distance: "54.6m Km",
          gravity: "3.711 m/s ",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Gravida in fermentum et sollicitudin ac orci phasellus egestas. Malesuada bibendum arcu vitae elementum curabitur vitae. Sagittis orci a scelerisque purus. Neque viverra justo nec ultrices dui sapien eget. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Eu volutpat odio facilisis mauris sit. In metus vulputate eu scelerisque. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. Viverra mauris in aliquam sem fringilla ut morbi tincidunt. Molestie at elementum eu facilisis. Gravida dictum fusce ut placerat orci nulla pellentesque. Diam volutpat commodo sed egestas egestas fringilla phasellus. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Leo in vitae turpis massa sed. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Et malesuada fames ac turpis egestas.",
          image: "assets/img/mars.png",
          picture:
              "https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2017/iceminedonma.jpg"),
      const Planet(
          id: "2",
          name: "Neptune",
          location: "Milkyway Galaxy",
          distance: "54.6m Km",
          gravity: "3.711 m/s ",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Gravida in fermentum et sollicitudin ac orci phasellus egestas. Malesuada bibendum arcu vitae elementum curabitur vitae. Sagittis orci a scelerisque purus. Neque viverra justo nec ultrices dui sapien eget. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Eu volutpat odio facilisis mauris sit. In metus vulputate eu scelerisque. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. Viverra mauris in aliquam sem fringilla ut morbi tincidunt. Molestie at elementum eu facilisis. Gravida dictum fusce ut placerat orci nulla pellentesque. Diam volutpat commodo sed egestas egestas fringilla phasellus. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Leo in vitae turpis massa sed. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Et malesuada fames ac turpis egestas.",
          image: "assets/img/neptune.png",
          picture:
              "https://i.pinimg.com/originals/93/ee/d2/93eed2c72fc2d83aba0e969bea741145.jpg"),
      const Planet(
          id: "3",
          name: "Moon",
          location: "Milkyway Galaxy",
          distance: "54.6m Km",
          gravity: "3.711 m/s ",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Gravida in fermentum et sollicitudin ac orci phasellus egestas. Malesuada bibendum arcu vitae elementum curabitur vitae. Sagittis orci a scelerisque purus. Neque viverra justo nec ultrices dui sapien eget. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Eu volutpat odio facilisis mauris sit. In metus vulputate eu scelerisque. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. Viverra mauris in aliquam sem fringilla ut morbi tincidunt. Molestie at elementum eu facilisis. Gravida dictum fusce ut placerat orci nulla pellentesque. Diam volutpat commodo sed egestas egestas fringilla phasellus. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Leo in vitae turpis massa sed. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Et malesuada fames ac turpis egestas.",
          image: "assets/img/moon.png",
          picture:
              "https://www.wallpaperup.com/uploads/wallpapers/2018/06/09/1268336/3facfe67db3533ec0344de5020ad8031-700.jpg"),
      const Planet(
          id: "4",
          name: "Earth",
          location: "Milkyway Galaxy",
          distance: "54.6m Km",
          gravity: "3.711 m/s ",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Gravida in fermentum et sollicitudin ac orci phasellus egestas. Malesuada bibendum arcu vitae elementum curabitur vitae. Sagittis orci a scelerisque purus. Neque viverra justo nec ultrices dui sapien eget. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Eu volutpat odio facilisis mauris sit. In metus vulputate eu scelerisque. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. Viverra mauris in aliquam sem fringilla ut morbi tincidunt. Molestie at elementum eu facilisis. Gravida dictum fusce ut placerat orci nulla pellentesque. Diam volutpat commodo sed egestas egestas fringilla phasellus. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Leo in vitae turpis massa sed. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Et malesuada fames ac turpis egestas.",
          image: "assets/img/earth.png",
          picture: "https://i.ytimg.com/vi/XCV8YIka370/maxresdefault.jpg"),
      const Planet(
          id: "5",
          name: "Mercury",
          location: "Milkyway Galaxy",
          distance: "54.6m Km",
          gravity: "3.711 m/s ",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Gravida in fermentum et sollicitudin ac orci phasellus egestas. Malesuada bibendum arcu vitae elementum curabitur vitae. Sagittis orci a scelerisque purus. Neque viverra justo nec ultrices dui sapien eget. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Eu volutpat odio facilisis mauris sit. In metus vulputate eu scelerisque. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. Viverra mauris in aliquam sem fringilla ut morbi tincidunt. Molestie at elementum eu facilisis. Gravida dictum fusce ut placerat orci nulla pellentesque. Diam volutpat commodo sed egestas egestas fringilla phasellus. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Leo in vitae turpis massa sed. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Et malesuada fames ac turpis egestas.",
          image: "assets/img/mercury.png",
          picture:
              "https://www.geek.com/wp-content/uploads/2014/07/mercury-head-625x350.jpg"),
    ];
  }

  static getPlanetById(id) {
    return getAllPlanets().firstWhere((planet) => planet.id == id);
  }
}
